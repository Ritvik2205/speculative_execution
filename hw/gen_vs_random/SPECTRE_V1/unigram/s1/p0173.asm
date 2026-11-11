.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovno rdi, rdx
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 3
test esi, 66
test dl, -105
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], 71
add al, 16 # instrumentation
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], -40
mov cl, dl
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 25
cmp al, -77
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], si
cmovns rdx, rsi
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rax
cmp bl, al
sbb ax, 82
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], cx
and rdi, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

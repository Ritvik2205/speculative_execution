.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rax, rax
test al, -56
and rcx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rcx]
and bl, al
cmp al, 56
and rbx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
cmp dl, bl
cmp al, -119
jmp .bb_0.2
.bb_0.2:
add al, dl
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

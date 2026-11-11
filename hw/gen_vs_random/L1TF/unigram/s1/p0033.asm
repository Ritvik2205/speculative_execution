.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rax
not rsi
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], dx
add dil, 44 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rdi]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], ax
cwde
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 7
lea eax, qword ptr [rcx + rax + 58]
or dil, -113
and rax, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], 109
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
cmovns rsi, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

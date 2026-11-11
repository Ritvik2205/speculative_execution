.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rbx]
sub esi, -89
and rsi, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rsi]
xchg esi, edi
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], -41
xchg esi, ecx
and rsi, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
not edx
lea di, qword ptr [rbx + rdx]
test rax, -1576813424
and rcx, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rcx]
cmovnle rsi, rsi
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 1 # instrumentation
and dx, word ptr [r14 + rax] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rax]
add dl, -53 # instrumentation
lea rbx, qword ptr [rax + rsi + 18297]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

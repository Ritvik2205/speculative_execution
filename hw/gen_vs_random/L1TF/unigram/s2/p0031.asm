.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setb sil
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
cmp edx, 99
add cl, 44 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rsi
sub al, dl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 1 # instrumentation
and rdx, qword ptr [r14 + rcx] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rcx]
cmp si, 74
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], dx
add bl, -5 # instrumentation
adc dil, bl
movzx si, bl
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], 22
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx di, al
and rdx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rcx]
add dil, sil
jle .bb_0.1
jmp .exit_0
.bb_0.1:
test cl, -24
bt ebx, 45
setnb dil
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 47
lea rax, qword ptr [rsi]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dil
add dl, cl
test al, -99
and rbx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rbx], 5
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 87
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

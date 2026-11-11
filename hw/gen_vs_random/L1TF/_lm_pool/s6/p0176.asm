.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
sub al, dl
or al, -57
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
sbb dl, cl
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 61
sbb cl, -11
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
cmp bl, sil
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], ax
xor cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], 62
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
adc edx, 74
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], edi
and rcx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], 70
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
mul dil
sub bl, al
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], edx
lea rbx, qword ptr [rax + rdx]
and rcx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rcx]
cmovno rcx, rcx
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], ax
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1394632232
sbb sil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

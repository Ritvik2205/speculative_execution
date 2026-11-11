.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], eax
and rcx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rcx]
cwde
and rdi, 0b1111111111111 # instrumentation
add esi, dword ptr [r14 + rdi]
sub cl, al
lea edi, qword ptr [rax + rax + 66]
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rbx
and rdx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdx], 50
mul rax
jmp .bb_0.1
.bb_0.1:
or dil, 1 # instrumentation
mov ax, 1 # instrumentation
div dil
cwde
sub edi, 27
setnl bl
and rdi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdi]
test rdx, rbx
neg rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

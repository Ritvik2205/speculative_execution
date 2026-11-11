.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test esi, 40
and rdx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rbx]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
cmp sil, 25
and cl, -57
add al, 120 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], 58
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 2
and rdx, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
add cl, 118 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rax]
test al, -71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

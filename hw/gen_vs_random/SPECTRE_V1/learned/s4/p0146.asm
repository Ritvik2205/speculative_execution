.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 29 # instrumentation
setnb sil
lea eax, qword ptr [rdi]
add al, 27 # instrumentation
sbb ecx, edi
not sil
xor ax, -2537
sbb dil, 71
lea rcx, qword ptr [rbx + rdi + 36]
sub al, 10
not al
sbb eax, 16
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rax], esi
sbb eax, 19
test ecx, -1134698714
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], al
cmovs rax, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

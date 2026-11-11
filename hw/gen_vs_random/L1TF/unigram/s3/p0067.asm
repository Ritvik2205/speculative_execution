.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, 39
or cl, cl
cmovno ebx, ebx
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rsi]
add cl, -110 # instrumentation
setbe sil
cmp ax, -79
xor bl, -116
lea edx, qword ptr [rdx]
and rbx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 44
cmovnb rdx, rax
and rdi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rax]
lea rbx, qword ptr [rdx]
sub edx, 71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp dil, 38
xchg bl, dil
add dl, -122 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rsi]
or rdx, 1 # instrumentation
add al, -82 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rsi]
or dl, dil
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], dl
and rax, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rax]
mul rax
or ebx, ecx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], dil
and rbx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rbx]
test rax, 404297506
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 32339
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

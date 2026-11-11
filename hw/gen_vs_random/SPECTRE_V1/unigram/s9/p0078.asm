.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], cl
and rdx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
setnle dil
and rdx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdx]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], edx
cdq
setno dil
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], cl
add al, 105 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdi]
lea ax, qword ptr [rcx + rdi + 34958]
and rsi, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], 9
and rax, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rdx]
add al, -13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

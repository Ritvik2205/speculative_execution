.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rax]
dec rax
mul dl
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], -115
add cl, -35 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rax]
btr ecx, esi
and rdi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdi]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 1
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
add dl, 58 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rdx]
cmp dl, dl
and rcx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
xor bl, cl
lea edi, qword ptr [rsi + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

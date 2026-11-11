.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, cl
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], -51
lea esi, qword ptr [rbx + rsi + 72]
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
add bl, -114 # instrumentation
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dl
or rax, rax
and rdx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rax
cmovle rdx, rbx
add sil, 2
jp .bb_0.1
jmp .exit_0
.bb_0.1:
cmp ecx, 100
setno al
sub al, dl
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], rcx
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 26
cmovo bx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

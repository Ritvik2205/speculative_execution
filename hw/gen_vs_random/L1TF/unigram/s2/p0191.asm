.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul bx, ax, 8
add dl, 27 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], 89
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
movsx edi, dl
bts bx, bx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], bl
lea dx, qword ptr [rbx + rdx + 34]
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], al
add al, -71 # instrumentation
adc eax, eax
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], cx
lea ebx, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

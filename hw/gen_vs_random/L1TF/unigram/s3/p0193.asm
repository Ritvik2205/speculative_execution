.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
imul rcx
sets bl
dec ebx
and rbx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], dl
btr rax, rdi
sub al, bl
cmovno ecx, ecx
add al, 78 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rax]
add dl, 97 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rdx]
or bl, bl
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], 24
lea di, qword ptr [rbx + rax]
and rdx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

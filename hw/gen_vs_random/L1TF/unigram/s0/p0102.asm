.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], si
add dl, 127 # instrumentation
setnbe cl
cmovo rbx, rax
sub bl, sil
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rcx]
lea bx, qword ptr [rbx]
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], -107
cmovns di, dx
add sil, 104 # instrumentation
mov esi, 83
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], rdx
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], si
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], rdx
or rbx, rax
add al, 83 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

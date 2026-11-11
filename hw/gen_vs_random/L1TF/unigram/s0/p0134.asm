.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub bl, dl
and rdx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
inc sil
or bx, 25
cmp cl, bl
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edi
add ebx, 54
lea rcx, qword ptr [rsi + rax]
test rsi, 71
xor al, 14
dec bx
and rax, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
movsx di, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

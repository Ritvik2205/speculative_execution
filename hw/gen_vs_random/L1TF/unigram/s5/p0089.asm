.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 8
and rsi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rsi]
xor rdi, rbx
mov sil, dil
add dl, 27 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rcx]
lea rdi, qword ptr [rax + rdx]
cmp rax, 108211639
and rdi, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 20
and rbx, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rbx]
add al, -103 # instrumentation
cmovnz ax, di
movsx edi, dl
xor bl, 38
setnbe dl
add cl, 88
lea rax, qword ptr [rbx + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

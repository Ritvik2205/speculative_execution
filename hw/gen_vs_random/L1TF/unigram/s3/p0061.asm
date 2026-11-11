.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rsi]
lea ecx, qword ptr [rsi + rcx + 8]
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 7
and rdi, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdi]
add bl, 124 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 2
and rcx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], sil
add dl, 127 # instrumentation
setnbe al
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], ebx
test eax, ebx
add bl, 89 # instrumentation
sbb sil, dl
mov bx, cx
lea rbx, qword ptr [rbx + rdx]
lea si, qword ptr [rsi + rax + 3]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

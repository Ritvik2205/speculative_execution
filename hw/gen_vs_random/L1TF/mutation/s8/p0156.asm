.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 6
or rcx, 1 # instrumentation
and rdx, rcx # instrumentation
shr rdx, 1 # instrumentation
div rcx
cwd
not bl
dec bl
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], al
cmovbe dx, dx
and rdi, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rdi]
bts ax, 201
add bl, 6 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdi
sub rdx, rbx
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
lea di, qword ptr [rdi + rbx]
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

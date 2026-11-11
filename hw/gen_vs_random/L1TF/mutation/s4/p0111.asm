.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 6 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rax]
sub rdx, rbx
or rcx, 1 # instrumentation
and rdx, rcx # instrumentation
shr rdx, 1 # instrumentation
div rcx
and rdi, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], al
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
not bl
lea di, qword ptr [rdi + rbx]
cmovbe dx, dx
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 6
cwd
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], eax
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
bts ax, 201
dec bl
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdi
jmp .bb_0.1
.bb_0.1:
add bl, -113 # instrumentation
and rax, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rsi]
sbb eax, -403815802
dec edx
xor al, al
and rcx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rcx]
not sil
test al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

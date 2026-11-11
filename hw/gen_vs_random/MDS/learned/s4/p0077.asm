.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rcx], 2
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 0
and rsi, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rsi]
test ecx, 1044879383
and cl, 102 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rbx]
btr ecx, ebx
xor al, -15
test edx, 33
and rsi, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rsi]
xor al, -119
xor al, -119
add cl, sil
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], rdi
and bl, -55 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rbx]
cmovnb di, si
and rdx, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rdi]
neg edx
and rax, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rcx], dx
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

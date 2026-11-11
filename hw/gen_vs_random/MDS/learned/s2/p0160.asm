.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, dx
and rsi, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 3
cmovs dx, cx
cmovnb di, ax
btr rsi, 73
bts rsi, 89
cmovs ecx, edi
xor sil, bl
and rdx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], ebx
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
xor al, -119
and rbx, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], cx
or al, -8
xor al, -28
cmovs rbx, rcx
and al, -56 # instrumentation
cmovl rdx, rdi
cmovz rbx, rdi
and rax, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rax]
test dl, 25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

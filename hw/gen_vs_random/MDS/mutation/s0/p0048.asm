.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
and rdx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rdx]
cmovz cx, cx
and rax, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdi]
cmovno rcx, rcx
and rcx, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], -102
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -29
cmovle esi, edx
and rdx, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
bts ebx, 205
not rdi
and rdx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rdx], esi
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], -32
test al, 127
cmovno rax, rdx
and rax, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rax]
bts bx, dx
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 50
or rbx, -77
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -60
test eax, -675944960
and rax, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
and rsi, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rsi]
cmovb bx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

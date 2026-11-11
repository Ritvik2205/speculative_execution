.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 22 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
cmovnp dx, di
and rsi, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rcx], ebx
add bx, 85
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 64
lea ax, qword ptr [rdx]
lea edi, qword ptr [rbx]
xor dil, dil
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], esi
cmp al, cl
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 58
xor edi, 48
xor bl, cl
lea di, qword ptr [rax + rdx]
lea si, qword ptr [rax]
or al, -87
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

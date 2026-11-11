.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 87
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 3
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 1
and rcx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rcx]
lea cx, qword ptr [rdi]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], edi
or bx, 0b1000000000000000 # instrumentation
bsr dx, bx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rax]
or cl, 105
xor sil, 64
and rcx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rcx]
lea si, qword ptr [rcx + rsi + 82]
lea si, qword ptr [rcx + rbx + 64]
and rbx, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

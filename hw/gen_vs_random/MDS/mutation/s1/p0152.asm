.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rbx, -77
test eax, -571234566
and rax, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], -32
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
test al, 127
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -60
cmovb bx, bx
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 112
bts bx, dx
and rdx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rdx], esi
bts ebx, 205
and rax, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rax]
cmovno rax, rdx
not rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

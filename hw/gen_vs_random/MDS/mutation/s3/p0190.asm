.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovb bx, bx
and rdx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rdx], esi
cmovno rax, rdx
not rdi
and rax, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 50
and rax, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rax]
bts bx, dx
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
test eax, 1729060510
test al, 66
and rsi, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rax]
or rbx, -77
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], -32
bts ebx, 205
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], 112
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

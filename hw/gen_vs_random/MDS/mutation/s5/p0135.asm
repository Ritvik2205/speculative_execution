.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 112
and rax, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rax]
not rdi
bts ebx, 205
test eax, 298249463
and rax, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rax]
or rbx, -72
and rax, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
cmovno rax, rdx
and rdx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rdx], esi
cmovb bx, bx
bts bx, dx
and rsi, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -60
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], -32
test al, 127
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

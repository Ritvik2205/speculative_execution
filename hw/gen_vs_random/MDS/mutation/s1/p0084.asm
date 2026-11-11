.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
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
test al, 22
cmovno rax, rdx
and rax, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rax]
bts bx, dx
xor ax, ax
and eax, -85386306
and rdi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdi]
or dx, 0b1000000000000000 # instrumentation
bsr dx, dx
and al, 21 # instrumentation
cmovb bx, ax
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 7
cmovnbe rcx, rax
cmovnbe di, ax
or al, 74
btc dx, 67
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], 123
and rsi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rsi], edi
and bl, sil
or edi, -88
and rax, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rax]
test rcx, -613256812
and rbx, 65
and rcx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dil
or dl, 51
test ax, -20900
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 6
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 47
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 50
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rdx], eax
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rbx]
cmovnp dx, si
btc di, bx
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -72 # instrumentation
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 3
cmovbe rcx, rsi
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 116
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], -16
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], -47
test ax, 5320
and rdx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rdx]
sub edi, 95
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 94
and rsi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], edx
bt edi, ebx
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], 75
and rdx, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rdx]
and bx, di
or al, -48
or ax, 6575
lea esi, qword ptr [rdi + rdx + 51]
cmovle ebx, eax
and rdx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rdx]
and al, sil
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
or ax, 19243
cmovnp cx, bx
cmovnp eax, edx
sub cl, cl
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rax], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

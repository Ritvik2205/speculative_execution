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
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdi
lea rbx, qword ptr [rdx]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 51
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
and bl, bl
and rsi, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rsi]
add dl, 88
and rdx, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rdx]
add al, 31
add dl, 22
and rcx, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 98
sub rax, 788906357
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 358568732
sbb rcx, 42
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 4
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 92
bt ebx, 42
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], -85
btc rdx, 87
sub cl, 32
lea ebx, qword ptr [rax]
btc dx, 49
cmovnbe rax, rdx
and rdi, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rdi]
cmovnp rsi, rsi
and rdi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btr dword ptr [r14 + rdi], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 85
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], edi
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rsi]
or dil, dil
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], sil
cmp al, 56
sub rbx, 8
and rbx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rdi
jmp .bb_0.1
.bb_0.1:
add bl, -71 # instrumentation
adc ebx, ebx
xor cl, dl
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rax
bswap rax
and rdx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rdx]
setnbe cl
test rcx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

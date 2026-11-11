.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -8
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 0
and rbx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rbx]
cmovb edx, edi
bt bx, 69
or dl, dil
or al, sil
or cl, 100
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 4
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
and al, 12 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rdi], si
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 0
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], cx
mov sil, bl
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 77
btc rbx, rax
and rdx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rcx]
and al, -37
adc sil, 26
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 62
jmp .bb_0.3
.bb_0.3:
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

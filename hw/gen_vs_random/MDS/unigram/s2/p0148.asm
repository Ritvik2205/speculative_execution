.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, ebx
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 10
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], si
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
bts rax, 77
and al, 57 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
and cl, -15 # instrumentation
cmovnp cx, cx
test cx, 401
and bl, -83 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 19
cmovno rax, rdi
cmovnbe ax, di
and cl, -126 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
btc rdx, rcx
and rbx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btr qword ptr [r14 + rbx], rcx
and rbx, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rbx]
and dl, 0 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

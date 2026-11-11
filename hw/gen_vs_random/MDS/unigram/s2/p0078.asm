.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rax]
test dil, sil
cmovno rbx, rdx
and dil, -39
or cl, 119
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 39
xor dil, sil
and rbx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rcx]
btc ax, si
and rsi, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rcx], 67
bts rbx, rax
and al, 39 # instrumentation
cmovbe ax, cx
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], di
cmovb rdi, rdi
test bl, -114
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -60
or ebx, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

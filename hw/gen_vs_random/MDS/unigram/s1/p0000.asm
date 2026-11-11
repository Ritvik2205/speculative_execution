.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, -121
and rsi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rsi], dx
and dl, cl
test sil, -96
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 77
btc ax, cx
and cl, 9 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rdi]
and al, 39 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rbx]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, edx
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], eax
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 90
btr eax, edi
or rcx, 54
bt ax, 76
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
btc rdx, 54
test dx, 16353
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

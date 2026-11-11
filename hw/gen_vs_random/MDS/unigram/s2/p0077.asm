.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 17 # instrumentation
cmovnp edx, esi
and sil, -81 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rbx]
btc rdi, rsi
and rdx, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rdx]
test al, -7
or sil, -49
cmovo si, di
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dl
btr eax, 51
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdi]
cmovp dx, si
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 3898
test bl, -114
test ebx, -2015966884
and rdx, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rdx]
btc rbx, 118
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], 105
bts dx, 50
and rdi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

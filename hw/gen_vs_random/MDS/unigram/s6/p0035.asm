.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 36
and rdx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rdx]
xor bl, dl
and rbx, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rbx]
cmovle ax, di
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr edx, esi
or eax, -1777347252
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], cx
and rdx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 0
and rcx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rcx]
btr esi, 11
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], ax
and cl, -34 # instrumentation
cmovs rax, rcx
btr ax, 193
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
bt ecx, edi
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rsi]
and sil, sil
btr rbx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

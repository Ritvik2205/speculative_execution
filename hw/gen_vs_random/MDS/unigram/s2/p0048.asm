.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rdx]
and al, -11 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rdx]
or ebx, -15
bt rbx, 241
and rsi, 51
xor rbx, 89
test rax, -1579405415
and sil, -128 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rsi]
btc cx, ax
or eax, 1725503461
and al, al
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
and al, 17 # instrumentation
cmovnp edi, ecx
and rbx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], sil
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rax
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rbx]
or al, 24
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

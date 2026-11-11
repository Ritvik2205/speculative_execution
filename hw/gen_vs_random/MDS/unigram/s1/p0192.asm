.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnz rcx, rbx
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and sil, 74
cmovnb rax, rdx
xor rcx, 71
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 0
and rsi, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
and rsi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rdx
cmovb cx, di
jmp .bb_0.1
.bb_0.1:
and dil, dil
and rcx, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rcx]
xor bl, -27
and rax, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rax]
test cl, al
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], bx
and rcx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rcx]
and cl, -98 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], bl
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

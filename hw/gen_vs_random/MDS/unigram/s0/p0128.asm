.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rsi]
btr cx, di
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
and al, -86 # instrumentation
cmovns ax, dx
or dil, dl
and rcx, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rcx]
or edx, edx
and dl, 4 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rbx]
cmovs ebx, ecx
cmovb rax, rsi
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rax], eax
xor rcx, 71
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 6
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], esi
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], 50
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 68
bt rcx, rcx
or edx, ecx
test bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

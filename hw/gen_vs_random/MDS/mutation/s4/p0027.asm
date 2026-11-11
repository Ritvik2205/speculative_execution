.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rcx
and rdx, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -3918
and bl, -89 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rcx]
and bl, -58 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovno si, word ptr [r14 + rbx]
cmovno rax, rax
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 6
and rdx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rdx], si
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], al
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rax
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 62
and rdx, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
test ebx, edi
cmovns rdi, rcx
and rdx, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 59
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rsi
and al, 8 # instrumentation
cmovz rdi, rax
bts rdx, rcx
and rdi, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rdi]
btr edi, ecx
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rdi], ebx
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rbx]
and al, -10 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rsi]
cmovle bx, dx
and rdi, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rdi]
test dl, bl
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], dx
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 3898
cmovnp esi, edi
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], 118
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btr qword ptr [r14 + rax], rdx
cmovs rdx, rax
bt rcx, rdi
and al, -56 # instrumentation
cmovl rdi, rbx
and cl, -109 # instrumentation
not rdx
and rdi, 87
and rdi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], al
bt edi, edi
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 60
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], al
cmovnb si, ax
bts rax, rsi
and dl, -73 # instrumentation
cmovns rcx, rsi
btr dx, 55
cmovnle eax, esi
and rdx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

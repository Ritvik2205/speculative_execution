.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rdi, 6
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], ecx
or ebx, edi
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 2
or al, cl
and rdi, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 6
sub dil, 2
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], -23
jmp .bb_0.1
.bb_0.1:
and cl, 85 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 34
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], al
test ebx, 245771113
and rsi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rcx]
lea di, qword ptr [rcx]
cmovns eax, eax
bts bx, ax
and al, -56
and al, 73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

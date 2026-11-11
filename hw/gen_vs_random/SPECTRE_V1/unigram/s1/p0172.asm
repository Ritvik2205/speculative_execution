.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test rbx, 85
and rbx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], -99
lea ax, qword ptr [rsi + rax + 42]
setns sil
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], -64
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 5
and rbx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], ebx
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 61
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], 71
and rdx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rcx]
xor cl, dl
btc ebx, 139
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], 96
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

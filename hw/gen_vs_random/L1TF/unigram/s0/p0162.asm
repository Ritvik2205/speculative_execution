.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 91 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 8
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], 58
and rcx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 80
or dl, 1 # instrumentation
or esi, 1 # instrumentation
and edx, esi # instrumentation
shr edx, 1 # instrumentation
div esi
cmp dx, 86
and rdx, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], ax
add al, 93
sbb bl, -88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

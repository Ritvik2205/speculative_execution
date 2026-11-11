.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 3
or ax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv ax
cmovo dx, cx
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 7
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 1 # instrumentation
and rdx, qword ptr [r14 + rsi] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rcx]
lea rcx, qword ptr [rax + rdx + 60461]
and rdx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rbx
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], eax
test eax, 1730342416
xor bl, bl
and rbx, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rbx]
add cl, 32 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rdx]
add dl, -3 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

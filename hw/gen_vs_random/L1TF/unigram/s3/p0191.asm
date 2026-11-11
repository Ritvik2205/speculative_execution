.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovs eax, eax
sub cx, 15
setbe dil
setnbe bl
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], 48
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], si
and rdx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], 58
and al, -111
xchg bx, cx
and rcx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rcx]
adc esi, 71
and rdi, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rdi]
xchg di, dx
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], ax
lea di, qword ptr [rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

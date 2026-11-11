.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdx]
and al, -68
and rbx, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 3
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], rax
sbb rcx, 94
xchg al, dl
setno al
cmovnb bx, ax
cmovnle rdx, rdx
movzx edi, bl
sub eax, eax
dec eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

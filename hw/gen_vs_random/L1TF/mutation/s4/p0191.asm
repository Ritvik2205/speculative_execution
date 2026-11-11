.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not al
and rbx, 0b1111111111111 # instrumentation
sub rdi, qword ptr [r14 + rbx]
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
sub al, 28
or ebx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ebx
and rbx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rbx
and rdx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rdx]
cmovno ax, ax
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
add cl, -84 # instrumentation
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
add cl, 19
and rax, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rax]
add cl, bl
not di
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], bl
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

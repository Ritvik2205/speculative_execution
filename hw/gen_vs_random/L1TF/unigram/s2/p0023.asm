.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rax]
sbb rdx, 9
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
cmovs ecx, edx
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], esi
xchg esi, ebx
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], 49
cmovnbe dx, di
add dl, 43 # instrumentation
lea rbx, qword ptr [rdi + rcx]
add dl, -126 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
adc esi, 73
and rdx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rdx]
not bx
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

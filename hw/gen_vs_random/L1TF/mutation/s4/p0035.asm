.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 32 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rdx]
test eax, 1730342416
or ax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv ax
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 7
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rbx
and rbx, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rbx]
lea rcx, qword ptr [rax + rdx + 60461]
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
setp cl
and rcx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], dl
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], -79
and rbx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rbx]
btr ax, 185
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

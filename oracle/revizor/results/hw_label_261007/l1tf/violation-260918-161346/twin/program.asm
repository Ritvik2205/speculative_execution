.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
lfence
btr word ptr [r14 + rdx], 7 
and rax, 0b1111111111111 # instrumentation
lfence
or byte ptr [r14 + rax], 0b1000 # instrumentation
lfence
and byte ptr [r14 + rax], 0b11111000 # instrumentation
add cl, -23 # instrumentation
and rdi, 0b1111111111111 # instrumentation
lfence
cmovo rbx, qword ptr [r14 + rdi] 
and rcx, 0b1111111111111 # instrumentation
lfence
and qword ptr [r14 + rcx], -93 
setbe dl 
and rcx, 0b1111111111111 # instrumentation
lfence
xor dword ptr [r14 + rcx], -77 
jmp .bb_0.1 
.bb_0.1:
xchg di, ax 
xor cl, cl 
xchg dx, si 
and rbx, 0b1111111111111 # instrumentation
lfence
sbb byte ptr [r14 + rbx], dil 
sbb ax, -26133 
cmovno ax, ax 
and rax, 0b1111111111111 # instrumentation
lfence
not qword ptr [r14 + rax] 
and rdi, 0b1111111111111 # instrumentation
lfence
add dword ptr [r14 + rdi], -99 
setp sil 
sub cl, 32 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop

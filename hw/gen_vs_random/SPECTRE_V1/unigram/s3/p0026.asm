.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 8
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
add bl, 104 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rcx]
sub bl, dl
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 73
and rsi, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rsi]
add dl, -94 # instrumentation
or dil, dl
jb .bb_0.1
jmp .exit_0
.bb_0.1:
add di, 44
or cx, 0b1000000000000000 # instrumentation
bsf ax, cx
add ax, 6980
or cx, 0b1000000000000000 # instrumentation
bsr cx, cx
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rax
and rcx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rcx]
cmovno rcx, rax
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, cl
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], si
or di, 18
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 9
mul dil
and rax, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 9
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
setnbe dil
setnle cl
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], 16
add cl, -29 # instrumentation
lea rdx, qword ptr [rax + rax + 53]
cmovnb dx, si
setno sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

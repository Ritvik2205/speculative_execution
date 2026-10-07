.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 95 # instrumentation
mov dil, bl 
and rax, 0b1111111111111 # instrumentation
lfence
setnbe byte ptr [r14 + rax] 
and rsi, 0b1111111111111 # instrumentation
lfence
cmovp rdx, qword ptr [r14 + rsi] 
and rdx, 0b1111111111000 # instrumentation
lfence
lock sub dword ptr [r14 + rdx], -40 
and dl, al 
and rdi, 0b1111111111111 # instrumentation
lfence
cmovnbe edx, dword ptr [r14 + rdi] 
lea di, qword ptr [rsi + rax + 38960] 
setnbe dl 
setnbe bl 
setnb sil 
mov bl, al 
sbb dl, cl 
test cx, -20370 
and rsi, 0b1111111111111 # instrumentation
lfence
cmovbe si, word ptr [r14 + rsi] 
cmovo rbx, rax 
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], -800407 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop

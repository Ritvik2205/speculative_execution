.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
dec word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rdi]
xor rbx, 50
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], edi
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], edi
xor eax, -105
add cl, 83 # instrumentation
setbe al
and rdx, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], di
add dl, dl
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], si
and rax, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rax], eax
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
lea ebx, qword ptr [rcx]
cmovnle rdx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
